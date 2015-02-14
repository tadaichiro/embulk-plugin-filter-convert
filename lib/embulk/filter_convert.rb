module Embulk
  module Plugin

    class FilterConvert < FilterPlugin

      Plugin.register_filter('convert', self)

      def self.transaction(config, in_schema, &control)
        task = {
          'columns' => config.param('columns', :array),
        }

        out_columns = []

        record = 0
        task['columns'].each do |column|
          out_columns << Column.new(record, column['name'], column['type'].to_sym)
          record += 1
        end

        yield(task, out_columns)
      end

      def initialize(task, in_schema, out_schema, page_builder)
        super
        @columns = task['columns']
      end

      def close
      end

      def add(page)
        page.each do |record|
          hash = Hash[in_schema.names.zip(record)]
          out_record = []
          @columns.each do |column|
            out_record << hash[column['name']]
          end
          @page_builder.add(out_record)
        end
      end

      def finish
        @page_builder.finish
      end
    end

  end
end

# Embulk filter plugin for data convert

data convert

no filter:

```
id,account,time,comment
1,32864,2015-01-27 19:23:49.000000 +0000,embulk
2,14824,2015-01-27 19:01:23.000000 +0000,embulk jruby
3,27559,2015-01-28 02:20:02.000000 +0000,embulk core
4,11270,2015-01-29 11:54:36.000000 +0000,Embulk "csv" parser plugin
```

filter convert: comment,id,time

```
comment,id,time,
embulk,32864,2015-01-27 19:23:49.000000 +0000
embulk jruby,14824,2015-01-27 19:01:23.000000 +0000
embulk core,27559,2015-01-28 02:20:02.000000 +0000
```

## Configuration

- **columns** need column name and type (array)

### Example

```yaml
filters:
  - type: convert
    columns:
    - {name: comment, type: string}
    - {name: account, type: long}
    - {name: time, type: timestamp}
```
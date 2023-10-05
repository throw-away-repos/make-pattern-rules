#### Using GNU Make 4.4.1

# Expected output

```text
$ make

foo1%    :  $(*) = -by-scenario1
scenario1:  $(*) = mk/mk

———————————————————————————————————————————

foo2
scenario2:  $(*) = second-scenario
```

or

```text
$ make

foo1%    :  $(*) = -by-scenario1
foo2
scenario1:  $(*) = mk/mk

———————————————————————————————————————————

scenario2:  $(*) = second-scenario
```

# Actual output

```text
$ make

foo1%    :  $(*) = -by-scenario1
scenario1:  $(*) = mk/mk
foo2
scenario2:  $(*) = mk/mk
scenario1:  $(*) = first-scenario

———————————————————————————————————————————

scenario2:  $(*) = second-scenario
```

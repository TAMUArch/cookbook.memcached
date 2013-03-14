memcached Cookbook
==================
Basic Memcahed Cookbook that has currently only been tested with Ubuntu 12.04.

Attributes
----------

#### memcached::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['memcached']['listen_ip']</tt></td>
    <td>String</td>
    <td>IP for memcached to listen on</td>
    <td>0.0.0.0</td>
  </tr>
  <tr>
    <td><tt>['memcached']['listen_tcp']</tt></td>
    <td>String</td>
    <td>TCP Port for memcached to listen on</td>
    <td>11211</td>
  </tr>
  <tr>
    <td><tt>['memcached']['listen_UDP']</tt></td>
    <td>String</td>
    <td>UDP Port for memcached to listen on</td>
    <td>11211</td>
  </tr>
  <tr>
    <td><tt>['memcached']['user']</tt></td>
    <td>String</td>
    <td>User to run memcached as</td>
    <td>nobody</td>
  </tr>
  <tr>
    <td><tt>['memcached']['max_mem']</tt></td>
    <td>String</td>
    <td>Default max amount of memory to allow memcached to use. Can be set to percentage or an actual number</td>
    <td>90%</td>
  </tr>
</table>

Usage
-----
#### memcached::default
Just include `memcached` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[memcached]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Jim Rosser 
License: MIT

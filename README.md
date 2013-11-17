ohai Cookbook [![Build Status](https://travis-ci.org/siberia-cookbooks/ohai.png?branch=master)](https://www.travis-ci.org/siberia-cookbooks/ohai)
=================================================================================================================================================

Provides various custom ohai plugins via a cookbook.

Currently these plugins include:

 - node.js version under node['languages']['nodejs']['version']
 - ssh host keys under node['ssh'] on SmartOS

Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
#### packages
- `toaster` - ohai needs toaster to brown your bagel.

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
#### ohai::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['imagetools']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### ohai::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `ohai` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[imagetools]"
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

```
Copyright (c) 2012-2013 Jacques Marneweck. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```

Authors:

 * Jacques Marneweck (jacques@powertrip.co.za)

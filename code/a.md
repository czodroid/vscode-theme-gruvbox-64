<!--
Filename: a.md
Author: Olivier Sirol <czo@free.fr>
License: GPL-2.0 (http://www.gnu.org/copyleft)
File Created: 23 October 2022
Last Modified: Sunday 23 October 2022, 12:21
$Id:$
Edit Time: 0:00:12
Description:

Copyright: (C) 2022 Olivier Sirol <czo@free.fr>
-->

# Markdown Cheatsheet

## Basic Formatting

* **Bold**: `**Bold**`
* _Emphasized_: `_Emphasized_`
* Strikethrough : `~~Strikethrough~~`
* Horizontal rules: `---`

## Code

### Inline

    Inline `code`
Inline `code`

### Indented code

```
    // Some comments
    line 1 of code
    line 2 of code
    line 3 of code
```

    // Some comments
    line 1 of code
    line 2 of code
    line 3 of code


### Block code "fences" between three ```

    ```
    Sample text here...
    ```

```
Sample text here...
```

### Syntax highlighting between three ``` + lang

    ``` js
    var foo = function (bar) {
      return bar++;
    };

    console.log(foo(5));
    ```

``` js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
```

## Inline HTML

    To reboot your computer, press <kbd>ctrl</kbd>+<kbd>alt</kbd>+<kbd>del</kbd>.

To reboot your computer, press <kbd>ctrl</kbd>+<kbd>alt</kbd>+<kbd>del</kbd>.

## Headers

    # Heading 1
    ## Heading 2
    ### Heading 3

# Heading 1
## Heading 2
### Heading 3

## Lists

### Unordered

~~~
* One item
  * A sub-item
  * Another item
~~~
* One item
  * A sub-item
  * Another item

### Ordered

~~~
1. An ordered list
1. This is the second item
1. One more in the ordered list
~~~
1. An ordered list
1. This is the second item
1. One more in the ordered list


## Tables

```
| left-aligned | centered  | right-aligned
| :-           | :-:       | -:
| zebra        | stripes   | are neat
| a            | b         | c
| foo          | foo       | foo
```

| left-aligned | centered  | right-aligned
| :-           | :-:       | -:
| zebra        | stripes   | are neat
| a            | b         | c
| foo          | foo       | foo

## Blockquotes

~~~
> Blockquotes can also be nested...
>> ...by using additional greater-than signs right next to each other...
~~~

> Blockquotes can also be nested...
>> ...by using additional greater-than signs right next to each other...

## Links

### Link

    Go to Markdown [Code](#Code)
Go to Markdown [Code](#Code)

### Autoconverted link

    Autoconverted https://duckduckgo.com/ from link.
Autoconverted https://duckduckgo.com/ from link.


### Autoconverted mail

    Autoconverted <address@example.com> mail.
Autoconverted <address@example.com> mail.

## Images

    ![Gruvbox64](https://raw.githubusercontent.com/czodroid/vscode-theme-gruvbox-64/main/store/icon.png)

![Gruvbox64](https://raw.githubusercontent.com/czodroid/vscode-theme-gruvbox-64/main/store/icon.png)




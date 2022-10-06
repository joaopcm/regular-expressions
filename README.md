## Regex study

Tip: use [Regex101](regex101.com) website to create your regular expressions :)

### Example 1
#### Regex:
```
^\d{3}.\d{3}.\d{3}-\d{2}$
```

#### Data:
123.123.123-12

321.123.345-20

200.300.500-19

#### Removing special chars:
Replace [.-] with empty

---

### Example 2
#### Regex:
```
^(\w+),\s(\w+)$
```

#### Data:
Melo, Joao

Wendel, Erick

Gomes, Rhaiany

#### Generate a JSON with first and last names:
Replace `^(\w+),\s(\w+)$` with `{firstName: "$2", lastName: "$1"}`


### Example 3
#### Regex:
```
\[(.*?)\]\(([http|https].*?)\)
```

#### Data:
```txt
[Erick Wendel](https://erickwendel.com) faz palestras e você deveria seguí-lo lá no [Twitter](http://twitter.com/erickwendel_) ou até no [Instagram](https://instagram.com/erickwendel_)

Ah, e você pode também pesquisar no [Google](https://google.com) ou
[Yahoo](https://yahoo.com)

Vai que vai!
```

#### Generate a HTML based on the markdown text:
Replace `\[(.*?)\]\(([http|https].*?)\)` with `<a href="$2">$1</a>`
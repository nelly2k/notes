## List of items
``` json
{
  exercise{
    id
    title
    equipment {
      name
    }
  }
}

```

## Item by id
```json 
{
  exercise(id: "b7aa8c0d-e5bf-4e8e-98e1-13fb666de1e8") {
    id
  }
  exercise(id: "b7aa8c0d-e5bf-4e8e-98e1-13fb666de1e9") {
    id
  }
}
```


## Aliases
``` json
devices: equipment {
      name
    }
```

With aliases we can request two products  
``` json
{
  a:exercise(id: "2458cb59-fe44-4509-8c7a-2cd37ea63fa4") {
    id
  }
  b:exercise(id: "7e391694-fd41-4748-be29-6e420740735e") {
    id
  }
}

```

results going to be
``` json
{
  "data": {
    "a": {
      "id": "2458cb59-fe44-4509-8c7a-2cd37ea63fa4",
      "title": "Chinup"
    },
    "b": {
      "id": "7e391694-fd41-4748-be29-6e420740735e",
      "title": "Bench Press"
    }
  }
}
```

## Fragments
In order to avoid repeating things, fragments can be used
``` json
{
  a:exercise(id: "2458cb59-fe44-4509-8c7a-2cd37ea63fa4") {
    ...comparisonFields
  }
  b:exercise(id: "7e391694-fd41-4748-be29-6e420740735e") {
    ...comparisonFields
  }
}

fragment comparisonFields on Exercise{
  id, title
}
```
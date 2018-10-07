# random_files
Random files to use for mock API calls
Using the Raw url of the file will result in a 200 response code, and a response body of your formatted json.

### NOTE: Github takes a few minutes to propagte changes.

### URL Example:
`https://raw.githubusercontent.com/UnspecifiedLLC/random_files/[ BRANCH ]/[ FOLDER ]/[ FILENAME ]`

### JSON Example:
`[{"key": "value", "foo": "bar"}, {"fiz": "baz"}]`
Requirements:

- Encapsulating Object Brackets `[]` with no Quotes.
    - The surrounding quotes get supplied automatically because the file is being served as type `Text`.
- Properly Formatted JSON
    - Use Javascript console to `JSON.stringify` an object, then Copy-Paste
    - OR https://jsonformatter.curiousconcept.com/
    
### TODO: Should we Rename to 'mock_api' instead of 'random_files' ?

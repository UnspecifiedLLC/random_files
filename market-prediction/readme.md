# Market Prediction Mock API

### predictions.json

https://github.com/UnspecifiedLLC/random_files/blob/master/market-prediction/predictions.json

Requirements:

- `date`: STRING
    - Treated as text, no validation performed.
- `actual`: FLOAT/STRING
    - Used with `parseFloat()`.
        - Automagically removes commas.
    - If `parseFloat()` fails, Ex: if `actual` is a STRING, record won't render on History view.
- `prediction`: FLOAT/STRING
    - Used with `parseFloat()`.
        - Automagically removes commas.
    - If `prediction` is a STRING, Future view doesn't prepend a '$'.
    - If `prediction` is Blank, Default string 'TBA' is displayed.
    - If `parseFloat()` fails, Ex: if `prediction` is a STRING, record won't render on History view.

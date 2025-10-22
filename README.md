# Mean-Variance-Standard Deviation Calculator

This is a Python project that calculates the mean, variance, standard deviation, maximum, minimum, and sum of a 3x3 matrix using NumPy.

## Project Description

This project is part of the FreeCodeCamp Data Analysis with Python certification. The calculator takes a list of 9 numbers and converts it into a 3x3 NumPy array, then performs statistical calculations along both axes and for the entire matrix.

## Features

The `calculate()` function performs the following calculations:
- **Mean**: along axis 0 (columns), axis 1 (rows), and for the flattened matrix
- **Variance**: along axis 0, axis 1, and for the flattened matrix
- **Standard Deviation**: along axis 0, axis 1, and for the flattened matrix
- **Maximum**: along axis 0, axis 1, and for the flattened matrix
- **Minimum**: along axis 0, axis 1, and for the flattened matrix
- **Sum**: along axis 0, axis 1, and for the flattened matrix

## Installation

1. Clone this repository
2. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

Import the calculate function and pass a list of 9 numbers:

```python
from mean_var_std import calculate

result = calculate([0,1,2,3,4,5,6,7,8])
print(result)
```

### Example Output

```python
{
  'mean': [[3.0, 4.0, 5.0], [1.0, 4.0, 7.0], 4.0],
  'variance': [[6.0, 6.0, 6.0], [0.6666666666666666, 0.6666666666666666, 0.6666666666666666], 6.666666666666667],
  'standard deviation': [[2.449489742783178, 2.449489742783178, 2.449489742783178], [0.816496580927726, 0.816496580927726, 0.816496580927726], 2.581988897471611],
  'max': [[6, 7, 8], [2, 5, 8], 8],
  'min': [[0, 1, 2], [0, 3, 6], 0],
  'sum': [[9, 12, 15], [3, 12, 21], 36]
}
```

### Error Handling

The function raises a `ValueError` if the input list doesn't contain exactly 9 numbers:

```python
calculate([1, 2, 3])  # ValueError: List must contain nine numbers.
```

## Testing

Run the tests using:

```bash
python test_module.py
```

Or run the main file which includes both example usage and tests:

```bash
python main.py
```

## Requirements

- Python 3.x
- NumPy

## License

This project is created for educational purposes as part of the FreeCodeCamp curriculum.

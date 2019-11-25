enum HeightError: Error {
  case maxHeight
  case minHeight
}

func checkHeightError(height: Int) throws {
  if height > 200 {
    throw HeightError.maxHeight
  } else if height < 140 {
    throw HeightError.minHeight
  } else {
    print("Enjoy your ride")
  }
}

do {
    try checkHeightError(height: 220)
} catch HeightError.maxHeight {
    print("Max height")
} catch HeightError.minHeight {
    print("Min height")
}

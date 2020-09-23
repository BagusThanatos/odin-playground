package utils


// NOTE: Require N to be power of 2
// Based on https://twitter.com/SebAaltonen/status/1307407217881157634/photo/1
sum_array_float64 :: proc (data: []f64, N: int) -> f64 {
  N := N;
  for N > 1 {
    for i := 0; i < N/2; i += 1 do data[i] += data[i + N/2];
    N /= 2;
  }
  return data[0];
}

self.onmessage = ({ data: { buffer } }) => {
  Atomics.wait(new Int32Array(buffer), 0, 0);
};

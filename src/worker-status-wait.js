self.onmessage = () => {
  const buffer = new SharedArrayBuffer(1024);
  const array = new Int32Array(buffer);
  Atomics.wait(array, 0, 0);
};

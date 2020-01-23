self.onmessage = msg => {
  const buffer = msg.data.buffer;
  Atomics.wait(new Int32Array(buffer), 0, 0);
}

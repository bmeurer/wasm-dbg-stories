self.onmessage = function(msg) {
  const module = msg.data;
  const instance = new WebAssembly.Instance(module);
  console.log(instance.exports.divSub(42, 6, 5));
};

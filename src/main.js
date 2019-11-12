const instantiateStreaming = (url, imports = {}) => {
  return WebAssembly.compileStreaming(fetch(url))
    .then(module => WebAssembly.instantiate(module, { imports }))
    .then(({ exports }) => exports);
};

/**
 * @fileoverview Simple worker that throws exception.
 */

self.onmessage = () => {
    throw new Error("Worker threw an exception");
  };

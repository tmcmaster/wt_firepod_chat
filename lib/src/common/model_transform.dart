mixin ModelTransform<I, E> {
  E encode(I internalModel);
  I decode(E externalModel);
}

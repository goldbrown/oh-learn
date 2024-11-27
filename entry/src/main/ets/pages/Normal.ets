@Entry
@Component
struct Normal {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Button('Circle', { type: ButtonType.Circle, stateEffect: false })
        .backgroundColor(0x317aff)
        .width(90)
        .height(90)
    }
    .height('100%')
    .width('100%')
  }
}
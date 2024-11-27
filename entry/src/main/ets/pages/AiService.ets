import router from '@ohos.router';

@Entry
@Component
struct AiService {
  @State message: string = 'Hello World';

  private innerResource: Resource = $rawfile('trailer.mp4');
  // private controller:VideoController | undefined;
  private previewUris: Resource = $rawfile('startIcon.png');

  build() {
    RelativeContainer() {
      Button('Circle', { type: ButtonType.Circle, stateEffect: false }).id("circle")
        .backgroundColor(0x317aff)
        .width(90)
        .height(90)
        .alignRules({
          top: { anchor: '__container__', align: VerticalAlign.Top },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          console.info("button clicked");
        });



      Button('back').fontSize(40).onClick(() => {
        router.back();
      }).alignRules({
        bottom: { anchor: '__container__', align: VerticalAlign.Bottom },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      });

    }
    .height('100%')
    .width('100%')
  }
}
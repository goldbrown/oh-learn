import router from '@ohos.router';

@Entry
@Component
struct Normal {
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

      Radio({ value: 'Radio1', group: 'radioGroup' }).id("radio1")
        .height(50)
        .width(50)
        .alignRules({
          top: { anchor: 'circle', align: VerticalAlign.Bottom },
          middle: { anchor: 'circle', align: HorizontalAlign.Center }
        })
        .onChange((isChecked: boolean) => {
          if(isChecked) {
            //需要执行的操作
            console.log("radio1 clicked");
          }
        })
      Radio({ value: 'Radio2', group: 'radioGroup' }).id("radio2")
        .height(50)
        .width(50)
        .alignRules({
          top: { anchor: 'radio1', align: VerticalAlign.Top },
          left: { anchor: 'radio1', align: HorizontalAlign.End }
        })
        .onChange((isChecked: boolean) => {
          if(isChecked) {
            //需要执行的操作
            console.log("radio2 clicked");
          }
        })

      Toggle({ type: ToggleType.Switch, isOn: false }).id("toggle1")
        .height(50)
        .width(50)
        .alignRules({
          top: { anchor: 'radio1', align: VerticalAlign.Bottom },
          middle: { anchor: 'radio1', align: HorizontalAlign.Center }
        })

      Progress({ value: 20, total: 100, type: ProgressType.Linear }).id("progress1")
        .width(100).height(50)
        .alignRules({
          top: { anchor: 'toggle1', align: VerticalAlign.Bottom },
          middle: { anchor: 'toggle1', align: HorizontalAlign.Center }
        })

      Image("io_top.jpg").id("img1")
        .width(400)
        .alignRules({
          top: { anchor: 'progress1', align: VerticalAlign.Bottom },
          middle: { anchor: 'progress1', align: HorizontalAlign.Center }
        })

      Video({
        "src": this.innerResource,
        // "controller": this.controller,
        previewUri: this.previewUris
      }).id("video1")
        .width(400)
        .alignRules({
          top: { anchor: 'img1', align: VerticalAlign.Bottom },
          middle: { anchor: 'img1', align: HorizontalAlign.Center }
        })


      Button('back').fontSize(40).onClick(() => {
        router.back();
      }).alignRules({
        bottom: { anchor: '__container__', align: VerticalAlign.Bottom },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      }).bindPopup(true, {
        message: "this is popup"
      })
      ;

    }
    .height('100%')
    .width('100%')
  }
}
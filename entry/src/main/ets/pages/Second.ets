import router from '@ohos.router';


class  RouterParam {
  src: string = "";
}
@Entry
@Component
struct Second {
  @State paramObj: RouterParam = router.getParams() as RouterParam;
  @State message: string = "second page";

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('SecondHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })

      Text(this.paramObj.src).id("SecondText").fontSize(30)
        .alignRules({
        top: { anchor: 'SecondHelloWorld', align: VerticalAlign.Bottom },
        middle: { anchor: 'SecondHelloWorld', align: HorizontalAlign.Center }
        });
      Button('back').fontSize(40).onClick(() => {
        router.back();
      }).alignRules({
        top: { anchor: 'SecondText', align: VerticalAlign.Bottom },
        middle: { anchor: 'SecondText', align: HorizontalAlign.Center }
      });
    }
    .height('100%')
    .width('100%')
  }
}
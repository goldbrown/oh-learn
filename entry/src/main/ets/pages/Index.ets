import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Index page';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('IndexPage')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })

      Button('跳转').id("SecondPage").fontSize(50).onClick(() => {
        router.pushUrl({
          "url":"pages/Second",
          "params": {
            "src": "data from index data from index data from index data from index data from index data from index"
          }
        });
      }).alignRules({
          top: { anchor: 'IndexPage', align: VerticalAlign.Bottom },
          middle: { anchor: 'IndexPage', align: HorizontalAlign.Center }
      })
      Button('跳转常用组件').id("NormalPage").fontSize(50).onClick(() => {
        router.pushUrl({
          "url":"pages/Normal",
          "params": {
            "src": "data from index"
          }
        });
      }).alignRules({
        top: { anchor: 'SecondPage', align: VerticalAlign.Bottom },
        middle: { anchor: 'SecondPage', align: HorizontalAlign.Center }
      })

      Button('跳转AI组件').id("AiPage").fontSize(50).onClick(() => {
        router.pushUrl({
          "url":"pages/AiService",
          "params": {
            "src": "data from index"
          }
        });
      }).alignRules({
        top: { anchor: 'NormalPage', align: VerticalAlign.Bottom },
        middle: { anchor: 'NormalPage', align: HorizontalAlign.Center }
      })

    }
    .height('100%')
    .width('100%')
  }
}
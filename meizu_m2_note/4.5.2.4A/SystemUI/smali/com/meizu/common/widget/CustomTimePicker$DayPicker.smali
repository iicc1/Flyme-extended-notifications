.class Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayPicker"
.end annotation


# instance fields
.field private picker:Lcom/meizu/common/widget/ScrollTextView;

.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;

.field private validEnd:I

.field private validStart:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 0
    .param p2, "picker"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1261
    iput-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    .line 1262
    return-void
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getValidEnd()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->validEnd:I

    return v0
.end method

.method public getValidStart()I
    .locals 1

    .prologue
    .line 1310
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->validStart:I

    return v0
.end method

.method public onScrollingFinished(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 3
    .param p1, "view"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 1323
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    .line 1324
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1325
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidStart()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1327
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 1328
    return-void
.end method

.method public onScrollingStarted(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 0
    .param p1, "view"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 1303
    return-void
.end method

.method public refreshCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 1291
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 1287
    return-void
.end method

.method public setData(Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;IIIIIIZ)V
    .locals 10
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;
    .param p2, "lineOffset"    # I
    .param p3, "currentItem"    # I
    .param p4, "count"    # I
    .param p5, "oneScreenCount"    # I
    .param p6, "validStart"    # I
    .param p7, "validEnd"    # I
    .param p8, "cycleEnabled"    # Z

    .prologue
    .line 1272
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    .line 1273
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 1275
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v3, p2

    const/4 v7, 0x0

    add-int/lit8 v8, p4, -0x1

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 1278
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v1, p0}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 1279
    return-void
.end method

.method public setSelectItemHeight(I)V
    .locals 2
    .param p1, "selectHeight"    # I

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 1266
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1295
    return-void
.end method

.method public setTextSize(II)V
    .locals 3
    .param p1, "selectedSize"    # I
    .param p2, "normalSize"    # I

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 1299
    return-void
.end method

.method public setValidEnd(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1314
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->validEnd:I

    .line 1315
    return-void
.end method

.method public setValidStart(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1318
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->validStart:I

    .line 1319
    return-void
.end method

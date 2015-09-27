.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollTextViewAdapter"
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;

.field private validEnd:I

.field private validStart:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 3

    .prologue
    .line 1232
    const/16 v0, 0xa

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;-><init>(Lcom/meizu/common/widget/ScrollTextView;III)V

    .line 1234
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;III)V
    .locals 1
    .param p2, "count"    # I
    .param p3, "validStart"    # I
    .param p4, "validEnd"    # I

    .prologue
    const/4 v0, 0x0

    .line 1251
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    .line 1224
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    .line 1226
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    .line 1252
    invoke-virtual {p0, p2, p3, p4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .line 1253
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1262
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    # getter for: Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    # getter for: Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    .line 1266
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 1274
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    return v0
.end method

.method public getValidEnd()I
    .locals 1

    .prologue
    .line 1290
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    return v0
.end method

.method public getValidStart()I
    .locals 1

    .prologue
    .line 1286
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    return v0
.end method

.method public update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .locals 0
    .param p1, "count"    # I
    .param p2, "validStart"    # I
    .param p3, "validEnd"    # I

    .prologue
    .line 1278
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    .line 1279
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    .line 1280
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    .line 1282
    return-object p0
.end method

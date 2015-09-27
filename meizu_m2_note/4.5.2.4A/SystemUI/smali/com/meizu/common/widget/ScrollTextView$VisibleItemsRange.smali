.class Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibleItemsRange"
.end annotation


# instance fields
.field private count:I

.field private first:I

.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1163
    invoke-direct {p0, p1, v0, v0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;-><init>(Lcom/meizu/common/widget/ScrollTextView;II)V

    .line 1164
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;II)V
    .locals 0
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1172
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->first:I

    .line 1173
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->count:I

    .line 1174
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->count:I

    return v0
.end method

.method public getFirst()I
    .locals 1

    .prologue
    .line 1181
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->first:I

    return v0
.end method

.method public getLast()I
    .locals 2

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public update(II)Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;
    .locals 0
    .param p1, "first"    # I
    .param p2, "count"    # I

    .prologue
    .line 1206
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->first:I

    .line 1207
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->count:I

    .line 1209
    return-object p0
.end method

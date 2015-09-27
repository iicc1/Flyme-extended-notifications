.class public Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
.super Ljava/lang/Object;
.source "SwapDragableGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field protected mLeftTop:Landroid/graphics/Point;

.field protected mName:Ljava/lang/String;

.field protected mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mPosition:I

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mName:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mLeftTop:Landroid/graphics/Point;

    .line 100
    return-void
.end method


# virtual methods
.method public getLeftTop()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mLeftTop:Landroid/graphics/Point;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mPosition:I

    return v0
.end method

.method public setLeftTop(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "leftTop"    # Landroid/graphics/Point;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mLeftTop:Landroid/graphics/Point;

    .line 115
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->mPosition:I

    .line 110
    return-void
.end method

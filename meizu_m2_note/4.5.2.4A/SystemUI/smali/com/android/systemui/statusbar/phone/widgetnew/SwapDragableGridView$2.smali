.class Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$2;
.super Ljava/lang/Object;
.source "SwapDragableGridView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 438
    const-string v0, "SwapDragableGridView"

    const-string v1, "Grid View Item OnLongClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$MyDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 446
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;
.super Ljava/lang/Object;
.source "WidgetLayoutExtend.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOrderRecorder:Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

.field final synthetic val$gv:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V
    .locals 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;->val$gv:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "shortcut_order_recorder"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;->mOrderRecorder:Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;

    return-void
.end method


# virtual methods
.method public varargs onChildrenPositionChanged(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;[Landroid/view/View;)V
    .locals 8
    .param p1, "dragableGridView"    # Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
    .param p2, "childrenPosChanged"    # [Landroid/view/View;

    .prologue
    .line 89
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;->mOrderRecorder:Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mShortCuts:Ljava/util/List;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;->saveOrder(Ljava/util/List;)V

    .line 94
    move-object v0, p2

    .local v0, "arr$":[Landroid/view/View;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 95
    .local v2, "childPosChangedView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;->val$gv:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "childName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;->val$gv:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v3

    .line 102
    .local v3, "childPosition":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectPositionOfShortCut(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "childName":Ljava/lang/String;
    .end local v2    # "childPosChangedView":Landroid/view/View;
    .end local v3    # "childPosition":I
    :cond_0
    return-void
.end method

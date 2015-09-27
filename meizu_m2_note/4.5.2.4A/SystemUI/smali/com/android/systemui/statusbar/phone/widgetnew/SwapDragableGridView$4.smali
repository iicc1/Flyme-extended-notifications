.class Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$4;
.super Landroid/database/DataSetObserver;
.source "SwapDragableGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setAdapter(Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;)V
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
    .line 932
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 936
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 937
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->handleDataChange()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V

    .line 938
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 942
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 943
    return-void
.end method

.class Lcom/meizu/common/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AdapterView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 854
    .local p0, "this":Lcom/meizu/common/widget/AdapterView$SelectionNotifier;, "Lcom/meizu/common/widget/AdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/AdapterView;Lcom/meizu/common/widget/AdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/AdapterView;
    .param p2, "x1"    # Lcom/meizu/common/widget/AdapterView$1;

    .prologue
    .line 854
    .local p0, "this":Lcom/meizu/common/widget/AdapterView$SelectionNotifier;, "Lcom/meizu/common/widget/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;-><init>(Lcom/meizu/common/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 856
    .local p0, "this":Lcom/meizu/common/widget/AdapterView$SelectionNotifier;, "Lcom/meizu/common/widget/AdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget-boolean v0, v0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    # invokes: Lcom/meizu/common/widget/AdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/meizu/common/widget/AdapterView;->access$200(Lcom/meizu/common/widget/AdapterView;)V

    .line 865
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    # invokes: Lcom/meizu/common/widget/AdapterView;->performAccessibilityActionsOnSelected()V
    invoke-static {v0}, Lcom/meizu/common/widget/AdapterView;->access$300(Lcom/meizu/common/widget/AdapterView;)V

    goto :goto_0
.end method

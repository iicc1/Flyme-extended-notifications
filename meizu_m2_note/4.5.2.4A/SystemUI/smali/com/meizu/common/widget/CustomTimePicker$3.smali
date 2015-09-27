.class Lcom/meizu/common/widget/CustomTimePicker$3;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomTimePicker;->initTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$3;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$3;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$3;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->setLunar(Z)V

    goto :goto_0
.end method

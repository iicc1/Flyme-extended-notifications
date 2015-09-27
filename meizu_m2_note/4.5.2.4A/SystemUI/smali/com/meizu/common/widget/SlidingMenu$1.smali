.class Lcom/meizu/common/widget/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SlidingMenu;


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    # getter for: Lcom/meizu/common/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;
    invoke-static {v0}, Lcom/meizu/common/widget/SlidingMenu;->access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    # getter for: Lcom/meizu/common/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;
    invoke-static {v0}, Lcom/meizu/common/widget/SlidingMenu;->access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;->onScrolling(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 283
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    # getter for: Lcom/meizu/common/widget/SlidingMenu;->mOpenListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;
    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$100(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    # getter for: Lcom/meizu/common/widget/SlidingMenu;->mOpenListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;
    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$100(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;->onOpen()V

    .line 292
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    # getter for: Lcom/meizu/common/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;
    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 294
    if-ne p1, v2, :cond_3

    .line 295
    sget-object v0, Lcom/meizu/common/widget/SlidingMenu$State;->CLOSE:Lcom/meizu/common/widget/SlidingMenu$State;

    .line 299
    .local v0, "state":Lcom/meizu/common/widget/SlidingMenu$State;
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    # getter for: Lcom/meizu/common/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;
    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;->onMenuState(Lcom/meizu/common/widget/SlidingMenu$State;)V

    .line 301
    .end local v0    # "state":Lcom/meizu/common/widget/SlidingMenu$State;
    :cond_1
    return-void

    .line 287
    :cond_2
    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    # getter for: Lcom/meizu/common/widget/SlidingMenu;->mCloseListener:Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;
    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$200(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    # getter for: Lcom/meizu/common/widget/SlidingMenu;->mCloseListener:Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;
    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$200(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;->onClose()V

    goto :goto_0

    .line 297
    :cond_3
    sget-object v0, Lcom/meizu/common/widget/SlidingMenu$State;->OPEN:Lcom/meizu/common/widget/SlidingMenu$State;

    .restart local v0    # "state":Lcom/meizu/common/widget/SlidingMenu$State;
    goto :goto_1
.end method

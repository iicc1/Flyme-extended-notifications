.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;
.super Landroid/database/ContentObserver;
.source "MobileDataShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v0

    .line 324
    .local v0, "lastDataSubId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$102(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;I)I

    .line 325
    const-string v1, "MobileDataShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMultiSimDataCallSubObserver: lastDataSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentDataSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->updateViews()V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->isValidSubId(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const-string v1, "MobileDataShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMultiSimDataCallSubObserver: unregisterContentObserver mDataUseObserverUsingSub with sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->isValidSubId(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    const-string v1, "MobileDataShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMultiSimDataCallSubObserver: registerContentObserver mDataUseObserverUsingSub with sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Landroid/database/ContentObserver;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 341
    :cond_1
    return-void
.end method

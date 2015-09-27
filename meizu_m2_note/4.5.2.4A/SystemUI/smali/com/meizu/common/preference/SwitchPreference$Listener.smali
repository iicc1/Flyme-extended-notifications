.class Lcom/meizu/common/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/preference/SwitchPreference;


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    # setter for: Lcom/meizu/common/preference/SwitchPreference;->switchAnimDone:Z
    invoke-static {v1, v0}, Lcom/meizu/common/preference/SwitchPreference;->access$102(Lcom/meizu/common/preference/SwitchPreference;Z)Z

    .line 64
    const-string v1, "SwitchPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch lintener onCheckedChanged, check:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; isChecked():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq p2, v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/meizu/common/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->access$200(Lcom/meizu/common/preference/SwitchPreference;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 78
    :goto_1
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Lcom/meizu/common/preference/SwitchPreference;->onSwitchCheckedChange(Z)V

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Lcom/meizu/common/preference/SwitchPreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->notifyDependencyChange(Z)V

    .line 76
    iget-object v0, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    # invokes: Lcom/meizu/common/preference/SwitchPreference;->notifyChanged()V
    invoke-static {v0}, Lcom/meizu/common/preference/SwitchPreference;->access$300(Lcom/meizu/common/preference/SwitchPreference;)V

    goto :goto_1
.end method

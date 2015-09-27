.class public Lcom/meizu/common/preference/SwitchPreference;
.super Landroid/preference/Preference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/SwitchPreference$SavedState;,
        Lcom/meizu/common/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private final mListener:Lcom/meizu/common/preference/SwitchPreference$Listener;

.field private mSendClickAccessibilityEvent:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mSwitchView:Lcom/meizu/common/widget/Switch;

.field private onClick:Z

.field private switchAnimDone:Z


# direct methods
.method static synthetic access$102(Lcom/meizu/common/preference/SwitchPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/SwitchPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/meizu/common/preference/SwitchPreference;->switchAnimDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/preference/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/SwitchPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/preference/SwitchPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/SwitchPreference;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 103
    const v1, 0x7f0e00ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 105
    instance-of v1, v0, Lcom/meizu/common/widget/Switch;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 106
    check-cast v1, Lcom/meizu/common/widget/Switch;

    iput-object v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    .line 109
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    move-object v1, v0

    .line 112
    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    iget-object v2, p0, Lcom/meizu/common/preference/SwitchPreference;->mListener:Lcom/meizu/common/preference/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    :cond_2
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method protected onClick()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 128
    const-string v3, "SwitchPreference"

    const-string v4, "onClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v3}, Lcom/meizu/common/widget/Switch;->isAnimRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 132
    .local v0, "newValue":Z
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/meizu/common/preference/SwitchPreference;->switchAnimDone:Z

    .line 134
    :cond_2
    const-string v3, "SwitchPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; isChecked():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSendClickAccessibilityEvent:Z

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 139
    iput-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->switchAnimDone:Z

    goto :goto_0

    .end local v0    # "newValue":Z
    :cond_3
    move v0, v2

    .line 131
    goto :goto_1

    .line 142
    .restart local v0    # "newValue":Z
    :cond_4
    iput-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->onClick:Z

    .line 143
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 144
    iput-boolean v2, p0, Lcom/meizu/common/preference/SwitchPreference;->onClick:Z

    .line 145
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v1}, Lcom/meizu/common/widget/Switch;->performClick()Z

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/meizu/common/preference/SwitchPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 336
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 333
    check-cast v0, Lcom/meizu/common/preference/SwitchPreference$SavedState;

    .line 334
    .local v0, "myState":Lcom/meizu/common/preference/SwitchPreference$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 335
    iget-boolean v1, v0, Lcom/meizu/common/preference/SwitchPreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 314
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 315
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 320
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/meizu/common/preference/SwitchPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/preference/SwitchPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 321
    .local v0, "myState":Lcom/meizu/common/preference/SwitchPreference$SavedState;
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/meizu/common/preference/SwitchPreference$SavedState;->checked:Z

    move-object v1, v0

    .line 322
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 271
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 273
    return-void

    .line 271
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected onSwitchCheckedChange(Z)V
    .locals 7
    .param p1, "isChecked"    # Z

    .prologue
    .line 380
    const-string v4, "SwitchPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSwitchCheckedChange, isChecked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; isChecked():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 383
    .local v0, "cls":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 385
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v4, "onPreferenceChange"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 397
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 402
    :cond_1
    :goto_1
    return-void

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 390
    :try_start_2
    const-string v4, "onPreferenceChange"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    .line 391
    :catch_1
    move-exception v2

    .line 392
    .local v2, "e1":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 398
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "e1":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    const-string v4, "SwitchPreference"

    const-string v5, "onSwitchCheckedChange"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 409
    .local v1, "context":Landroid/content/Context;
    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 410
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v3, p0, Lcom/meizu/common/preference/SwitchPreference;->mSendClickAccessibilityEvent:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 412
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 413
    invoke-virtual {p1, v2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 414
    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 415
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 417
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/meizu/common/preference/SwitchPreference;->mSendClickAccessibilityEvent:Z

    .line 418
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-boolean v2, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    if-eq v2, p1, :cond_3

    move v0, v1

    .line 160
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/meizu/common/preference/SwitchPreference;->mCheckedSet:Z

    if-nez v2, :cond_2

    .line 161
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    .line 162
    iput-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mCheckedSet:Z

    .line 163
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->persistBoolean(Z)Z

    .line 164
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->onClick:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchView:Lcom/meizu/common/widget/Switch;

    if-nez v1, :cond_2

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->notifyDependencyChange(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->notifyChanged()V

    .line 170
    :cond_2
    return-void

    .line 159
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    iget-boolean v3, p0, Lcom/meizu/common/preference/SwitchPreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    .line 184
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 183
    .end local v0    # "shouldDisable":Z
    :cond_2
    iget-boolean v3, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 282
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 283
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 284
    const/4 v3, 0x1

    .line 285
    .local v3, "useDefaultSummary":Z
    iget-boolean v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 286
    iget-object v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const/4 v3, 0x0

    .line 293
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 295
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const/4 v3, 0x0

    .line 301
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_1
    const/16 v0, 0x8

    .line 302
    .local v0, "newVisibility":I
    if-nez v3, :cond_2

    .line 304
    const/4 v0, 0x0

    .line 306
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 307
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    .end local v0    # "newVisibility":I
    .end local v3    # "useDefaultSummary":Z
    :cond_3
    return-void

    .line 288
    .restart local v3    # "useDefaultSummary":Z
    :cond_4
    iget-boolean v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mChecked:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const/4 v3, 0x0

    goto :goto_0
.end method

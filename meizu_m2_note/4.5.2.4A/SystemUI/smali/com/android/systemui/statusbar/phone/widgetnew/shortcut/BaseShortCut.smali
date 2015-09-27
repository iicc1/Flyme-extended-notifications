.class public abstract Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.super Ljava/lang/Object;
.source "BaseShortCut.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;


# static fields
.field private static mToast:Lcom/android/systemui/statusbar/phone/widget/util/MyToast;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescription:Landroid/widget/TextView;

.field private mDescriptionAnimator:Landroid/animation/ObjectAnimator;

.field private mDescriptionArea:Landroid/view/ViewGroup;

.field private mDescriptionLocaleString:Ljava/lang/String;

.field private mDescriptionStringResId:I

.field private mIcon:Landroid/widget/ImageView;

.field private mIconAnimator:Landroid/animation/ObjectAnimator;

.field private mIconResId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mThemeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x64

    const/4 v2, 0x2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mThemeReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mContext:Landroid/content/Context;

    .line 66
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    new-instance v1, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mToast:Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    .line 69
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 70
    .local v0, "objAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 73
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 74
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIconAnimator:Landroid/animation/ObjectAnimator;

    .line 76
    new-instance v0, Landroid/animation/ObjectAnimator;

    .end local v0    # "objAnimator":Landroid/animation/ObjectAnimator;
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 77
    .restart local v0    # "objAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 80
    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 81
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionAnimator:Landroid/animation/ObjectAnimator;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->registerFlymeThemeReceiver()V

    .line 84
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 80
    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionLocaleString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionStringResId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIconResId:I

    return v0
.end method

.method private registerFlymeThemeReceiver()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.meizu.theme.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mThemeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    return-void
.end method


# virtual methods
.method protected createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "layoutResIdesId"    # I
    .param p2, "iconResId"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mView:Landroid/view/View;

    .line 126
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 149
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 131
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mView:Landroid/view/View;

    .line 134
    const v2, 0x7f0e0001

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iput p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIconResId:I

    .line 142
    const v2, 0x7f0e0003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionArea:Landroid/view/ViewGroup;

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v2, 0x7f0e0004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescription:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    move-object v1, v0

    .line 149
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDescription()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDescriptionLocaleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mToast:Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 253
    .local v0, "id":I
    const v1, 0x7f0e0001

    if-ne v1, v0, :cond_1

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClickNumberOfShortCut(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const v1, 0x7f0e0003

    if-ne v1, v0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickDescriptionArea(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract onClickDescriptionArea(Landroid/view/View;)V
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 109
    return-void
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStateChange()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method protected setDescriptionAlpha(F)V
    .locals 5
    .param p1, "destAlphaValue"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v2

    aput v2, v1, v3

    aput p1, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 174
    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setSoundEffectsEnabled(Z)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setSoundEffectsEnabled(Z)V

    goto :goto_0
.end method

.method protected setDescriptionLocaleStringFromRes(I)V
    .locals 4
    .param p1, "resourceId"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionStringResId:I

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionLocaleString:Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionLocaleString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method

.method protected setIconAlpha(F)V
    .locals 4
    .param p1, "destAlphaValue"    # F

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIconAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 167
    return-void
.end method

.method protected setViewAlpha(F)V
    .locals 0
    .param p1, "destAlphaValue"    # F

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->setIconAlpha(F)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->setDescriptionAlpha(F)V

    .line 160
    return-void
.end method

.method public abstract updateViews()V
.end method

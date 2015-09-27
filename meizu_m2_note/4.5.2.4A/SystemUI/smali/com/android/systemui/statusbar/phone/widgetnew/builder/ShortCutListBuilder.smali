.class public Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;
.super Ljava/lang/Object;
.source "ShortCutListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder$ASCOrderComparator;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

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

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "psb"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;

    const-string v1, "shortcut_order_recorder"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->mOrderRecorder:Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 58
    return-void
.end method


# virtual methods
.method public createShortCutList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->createShortCuts()Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "shortCutList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->sortShortCutsByLastOrder(Ljava/util/List;)V

    .line 69
    return-object v0
.end method

.method protected createShortCuts()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v19, v0

    .line 74
    .local v19, "psb":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->mContext:Landroid/content/Context;

    .line 77
    .local v2, "context":Landroid/content/Context;
    new-instance v17, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 81
    .local v17, "mWiFiShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;
    new-instance v11, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    move-object/from16 v0, v19

    invoke-direct {v11, v2, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 83
    .local v11, "mMobileDataShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
    new-instance v5, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    move-object/from16 v0, v19

    invoke-direct {v5, v2, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 84
    .local v5, "mBluetoothShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;
    new-instance v6, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;

    move-object/from16 v0, v19

    invoke-direct {v6, v2, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 85
    .local v6, "mBrightnessShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;
    new-instance v12, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;

    invoke-direct {v12, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;-><init>(Landroid/content/Context;)V

    .line 86
    .local v12, "mMuteShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;
    new-instance v15, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;

    invoke-direct {v15, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;-><init>(Landroid/content/Context;)V

    .line 87
    .local v15, "mVibrateShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;
    new-instance v4, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-direct {v4, v2, v11}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    .line 88
    .local v4, "mAirplaneShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;
    new-instance v14, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;

    invoke-direct {v14, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;-><init>(Landroid/content/Context;)V

    .line 89
    .local v14, "mRotationShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;
    new-instance v8, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-direct {v8, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;-><init>(Landroid/content/Context;)V

    .line 90
    .local v8, "mFlashlightShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;
    new-instance v9, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;

    invoke-direct {v9, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;-><init>(Landroid/content/Context;)V

    .line 91
    .local v9, "mGpsShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;
    new-instance v16, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;-><init>(Landroid/content/Context;)V

    .line 92
    .local v16, "mVpnShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;
    new-instance v10, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    invoke-direct {v10, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;-><init>(Landroid/content/Context;)V

    .line 94
    .local v10, "mHotspotShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;
    new-instance v3, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;-><init>(Landroid/content/Context;)V

    .line 97
    .local v3, "floatTouchShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;
    new-instance v13, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    invoke-direct {v13, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;-><init>(Landroid/content/Context;)V

    .line 98
    .local v13, "mNfcShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;
    new-instance v7, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;

    invoke-direct {v7, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;-><init>(Landroid/content/Context;)V

    .line 100
    .local v7, "mDndShortCut":Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;
    new-instance v18, Ljava/util/ArrayList;

    const/16 v20, 0x19

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v18, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Landroid/os/BuildExt;->hasNFC()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 112
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-object v18
.end method

.method protected sortShortCutsByLastOrder(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->mOrderRecorder:Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;

    .line 127
    .local v0, "orderRecorder":Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;, "Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;->isRecorderExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder$ASCOrderComparator;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder$ASCOrderComparator;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/OrderRecorder;->saveOrder(Ljava/util/List;)V

    .line 142
    :cond_0
    return-void
.end method

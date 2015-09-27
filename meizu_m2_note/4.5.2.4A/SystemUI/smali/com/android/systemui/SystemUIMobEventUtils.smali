.class public Lcom/android/systemui/SystemUIMobEventUtils;
.super Ljava/lang/Object;
.source "SystemUIMobEventUtils.java"


# static fields
.field private static mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;


# direct methods
.method public static checkProxyValid(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    sget-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 303
    const-string v0, "SystemUIMobEventUtils"

    const-string v1, "UsageStatsProxy invalid, construct ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {p0}, Lcom/meizu/stats/UsageStatsProxy;->getOfflineInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    .line 306
    :cond_0
    return-void
.end method

.method public static collectAddFavorApp(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 203
    const-string v0, "multi_task_add_favor_app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static collectAdjustAutoMode(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 225
    const-string v0, "multi_task_adjust_auto_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static collectClearAll(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 236
    const-string v0, "multi_task_clear_all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public static collectClearAllNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 149
    const-string v0, "notifiction_panel_clear_all_notifications"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static collectClearSingle(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 242
    const-string v0, "multi_task_clear_single"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static collectClearSingleNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 160
    const-string v0, "mobevent_notifiction_panel_clear_single_notification"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static collectClickNetworkPrefHelper(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 264
    const-string v0, "network_pref_helper_clicked"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public static collectClickNumberOfShortCut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortCutName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 80
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shortCutName cannot be null or null-string!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobevent_click_number_of_shortcut_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static collectEnterRecentApp(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 248
    const-string v0, "multi_task_enter_recent_app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static collectLockOrUnlockApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "multi_task_lock_unlock_status"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "multi_task_lock_unlock_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "action_multi_task_lock_unlock_app"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 279
    return-void
.end method

.method public static collectManualAdjustLight(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 214
    const-string v0, "multi_task_manual_adjust_light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static collectNotiPanelFullOpen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 127
    const-string v0, "notifiction_panel_full_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortCutName"    # Ljava/lang/String;
    .param p2, "isOn"    # Z

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 94
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "shortCutName cannot be null or null-string!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ON_OFF_STATE"

    if-eqz p2, :cond_2

    const-string v1, "on"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobevent_on_off_state_of_shortcut_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    return-void

    .line 99
    :cond_2
    const-string v1, "off"

    goto :goto_0
.end method

.method public static collectPositionOfShortCut(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortCutName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 110
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "shortCutName cannot be null or null-string!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "POSITION"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobevent_position_of_shortcut_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    return-void
.end method

.method public static collectRecentPanleStatus(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 169
    const-string v1, "SystemUIMobEventUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collectRecentPanleStatus status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", amount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "multi_task_panel_status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "multi_task_recent_app_amount"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "action_multi_task_panel_state"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    return-void
.end method

.method public static collectSecondNotiPanelFullOpen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 138
    const-string v0, "second_notifiction_panel_full_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private static onEventOnly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 316
    const-string v0, "SystemUIMobEventUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUsageStatsProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-eqz v0, :cond_0

    .line 318
    sget-object v2, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v0}, Lcom/meizu/stats/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    return-void
.end method

.method public static onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 286
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v1, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v2, "smarttouch"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1    # "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Map;

    .prologue
    .line 310
    sget-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p2}, Lcom/meizu/stats/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 313
    :cond_0
    return-void
.end method

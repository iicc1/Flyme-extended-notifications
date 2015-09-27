.class public Lcom/android/systemui/statusbar/tv/TvStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TvStatusBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 37
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 50
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 77
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public animateExpandSettingsPanel()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public directExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public disable(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 62
    return-void
.end method

.method protected haltTicker()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 157
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 46
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 58
    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 93
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 89
    return-void
.end method

.method public setNavButtonVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 170
    return-void
.end method

.method public setStatusBarDarkTheme(ZZ)V
    .locals 0
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 81
    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 101
    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method protected tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "firstTime"    # Z

    .prologue
    .line 127
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 85
    return-void
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0
    .param p1, "expandedPosition"    # I

    .prologue
    .line 131
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 42
    return-void
.end method

.method public updateKeyguardStatusBar(Z)V
    .locals 0
    .param p1, "isKeyguardShow"    # Z

    .prologue
    .line 160
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 54
    return-void
.end method

.method protected updateNotificationIcons()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public updateRecentPanel(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    return-void
.end method

.method public updateStatusbarPos(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 167
    return-void
.end method

.class public interface abstract Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FlymeCommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract removeNotification(Landroid/os/IBinder;)V
.end method

.method public abstract setNavButtonVisible(Z)V
.end method

.method public abstract setStatusBarDarkTheme(ZZ)V
.end method

.method public abstract updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
.end method

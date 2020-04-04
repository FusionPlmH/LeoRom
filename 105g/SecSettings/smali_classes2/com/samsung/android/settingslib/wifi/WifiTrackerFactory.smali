.class public Lcom/samsung/android/settingslib/wifi/WifiTrackerFactory;
.super Ljava/lang/Object;
.source "WifiTrackerFactory.java"


# static fields
.field private static sTestingWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;


# direct methods
.method public static create(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)Lcom/samsung/android/settingslib/wifi/WifiTracker;
    .locals 8

    sget-object v0, Lcom/samsung/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    return-object v0
.end method

.method public static setTestingWifiTracker(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    return-void
.end method

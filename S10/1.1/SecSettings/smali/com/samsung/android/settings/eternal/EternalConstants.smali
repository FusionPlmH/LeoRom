.class public Lcom/samsung/android/settings/eternal/EternalConstants;
.super Ljava/lang/Object;
.source "EternalConstants.java"


# static fields
.field public static final DEFAULT_VALUE_WHITE_LIST:[Ljava/lang/String;

.field public static final FAST_TRACK_BLACK_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "/Settings/Connections/Location"

    const-string v1, "/Settings/Connections/LocationMethod"

    const-string v2, "/Settings/Connections/LocationWifiScan"

    const-string v3, "/Settings/Connections/LocationBluetoothScan"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/EternalConstants;->DEFAULT_VALUE_WHITE_LIST:[Ljava/lang/String;

    const-string v0, "/Settings/Connections/Location"

    const-string v1, "/Settings/Connections/LocationMethod"

    const-string v2, "/Settings/Connections/LocationWifiScan"

    const-string v3, "/Settings/Connections/LocationBluetoothScan"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/EternalConstants;->FAST_TRACK_BLACK_LIST:[Ljava/lang/String;

    return-void
.end method

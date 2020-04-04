.class Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;
.super Ljava/lang/Object;
.source "SecDeviceInfoHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceInfo"
.end annotation


# instance fields
.field mContent:Ljava/lang/String;

.field mIsCopyable:Z

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    return v0
.end method

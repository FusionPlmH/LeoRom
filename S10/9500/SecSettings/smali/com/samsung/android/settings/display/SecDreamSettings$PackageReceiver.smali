.class Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;Lcom/samsung/android/settings/display/SecDreamSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$900(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$100(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    return-void
.end method

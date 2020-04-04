.class Lcom/samsung/android/settings/SecCmcModeEnabler$1;
.super Landroid/database/ContentObserver;
.source "SecCmcModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecCmcModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecCmcModeEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$1;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$1;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$000(Lcom/samsung/android/settings/SecCmcModeEnabler;)V

    return-void
.end method

.class Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1$1;
.super Ljava/lang/Object;
.source "SecScreenSizePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1$1;->this$1:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1$1;->this$1:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->finish()V

    return-void
.end method

.class Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;
.super Ljava/lang/Object;
.source "KnoxSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;

.field final synthetic val$compliant:Z

.field final synthetic val$parentFragment:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;ZLcom/samsung/android/settings/knox/KnoxSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;

    iput-boolean p2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;->val$compliant:Z

    iput-object p3, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;->val$parentFragment:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->access$202(Z)Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;->val$compliant:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;->val$parentFragment:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->access$300(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;->val$parentFragment:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->access$400(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V

    :goto_0
    return-void
.end method

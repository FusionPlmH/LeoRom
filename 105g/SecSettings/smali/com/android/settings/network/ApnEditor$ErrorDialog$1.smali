.class Lcom/android/settings/network/ApnEditor$ErrorDialog$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ApnEditor$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnEditor$ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnEditor$ErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ErrorDialog$1;->this$0:Lcom/android/settings/network/ApnEditor$ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ErrorDialog$1;->this$0:Lcom/android/settings/network/ApnEditor$ErrorDialog;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void
.end method

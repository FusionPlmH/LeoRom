.class public Lcom/android/settings/network/ApnEditor$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# static fields
.field private static id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static showError(Lcom/android/settings/network/ApnEditor;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/settings/network/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static showError(Lcom/android/settings/network/ApnEditor;I)V
    .locals 0

    sput p1, Lcom/android/settings/network/ApnEditor$ErrorDialog;->id:I

    invoke-static {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    sget v0, Lcom/android/settings/network/ApnEditor$ErrorDialog;->id:I

    const v1, 0x7f12077a

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120857

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121174

    new-instance v3, Lcom/android/settings/network/ApnEditor$ErrorDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog$1;-><init>(Lcom/android/settings/network/ApnEditor$ErrorDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    sget v0, Lcom/android/settings/network/ApnEditor$ErrorDialog;->id:I

    const/16 v3, 0xa

    const v4, 0x7f120858

    if-ne v0, v3, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121e52

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Lcom/android/settings/network/ApnEditor$ErrorDialog;->id:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

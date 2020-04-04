.class public Lcom/android/settings/Settings$HelpActivity;
.super Landroid/app/Activity;
.source "Settings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelpActivity"
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/Settings$HelpActivity$1;

    invoke-direct {v0}, Lcom/android/settings/Settings$HelpActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/Settings$HelpActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings$HelpActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/Settings$HelpActivity;->finish()V

    return-void
.end method

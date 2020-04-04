.class public final synthetic Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

.field private final synthetic f$1:Lcom/android/settingslib/drawer/Tile;

.field private final synthetic f$2:Landroid/support/v7/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;->f$1:Lcom/android/settingslib/drawer/Tile;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;->f$2:Landroid/support/v7/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;->f$1:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;->f$2:Landroid/support/v7/preference/Preference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindSummary$2(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V

    return-void
.end method

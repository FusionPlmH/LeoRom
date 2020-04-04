.class public final synthetic Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

.field private final synthetic f$1:Landroid/app/Activity;

.field private final synthetic f$2:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;->f$2:Lcom/android/settingslib/drawer/Tile;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;->f$2:Lcom/android/settingslib/drawer/Tile;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindPreferenceToTile$0(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

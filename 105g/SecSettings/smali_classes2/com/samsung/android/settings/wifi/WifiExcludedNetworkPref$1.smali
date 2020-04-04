.class Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref$1;
.super Ljava/lang/Object;
.source "WifiExcludedNetworkPref.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;

.field final synthetic val$mNetworkId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref$1;->this$0:Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref$1;->val$mNetworkId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref$1;->this$0:Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref$1;->val$mNetworkId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;->access$000(Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;IZ)V

    return-void
.end method

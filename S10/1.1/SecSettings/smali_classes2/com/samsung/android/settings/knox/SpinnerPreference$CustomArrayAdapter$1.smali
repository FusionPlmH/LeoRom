.class Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;->this$1:Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;

    iput p2, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;->this$1:Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/knox/SpinnerPreference;->getFingerPlusIndex()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;->this$1:Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;

    iget v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/knox/SpinnerPreference;->getresult(I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;->this$1:Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

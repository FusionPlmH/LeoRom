.class Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomHolder"
.end annotation


# instance fields
.field private checkedTextView:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SpinnerPreference;Landroid/view/View;I)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    const v1, 0x7f0a084d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    iget-object v2, p1, Lcom/samsung/android/settings/knox/SpinnerPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/SpinnerPreference;->getFingerPlusIndex()I

    move-result v1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    new-array v0, v2, [I

    const v1, 0x101021a

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    const v5, 0x7f0800f1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SpinnerPreference;->access$100(Lcom/samsung/android/settings/knox/SpinnerPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060323

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/settings/knox/SpinnerPreference;->entries:[Ljava/lang/CharSequence;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ne p3, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

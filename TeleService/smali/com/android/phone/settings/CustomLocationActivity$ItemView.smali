.class public Lcom/android/phone/settings/CustomLocationActivity$ItemView;
.super Ljava/lang/Object;
.source "CustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# instance fields
.field public final location:Landroid/widget/TextView;

.field public final number:Landroid/widget/TextView;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;->location:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f07000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;->number:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    .line 71
    return-void
.end method

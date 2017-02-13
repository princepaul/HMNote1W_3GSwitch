.class public Lcom/android/phone/IccDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccDepersonalizationPanel.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_DEPERSONALIZATION_RESULT:I = 0x64


# instance fields
.field private final ENTRY:I

.field private final ERROR:I

.field private final IN_PROGRESS:I

.field private final SUCCESS:I

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPersoSubtype:I

.field private final mPersoSubtypeLabels:[[I

.field private mPersoSubtypeText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 226
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 78
    iput v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 79
    iput v4, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 80
    iput v5, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 81
    iput v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 86
    const/16 v0, 0x19

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeLabels:[[I

    .line 181
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 197
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 291
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 330
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 227
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 228
    return-void

    .line 86
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x7f0b019e
        0x7f0b01a1
        0x7f0b01a2
        0x7f0b01a3
    .end array-data

    :array_4
    .array-data 4
        0x7f0b05b0
        0x7f0b05bb
        0x7f0b05c6
        0x7f0b05d1
    .end array-data

    :array_5
    .array-data 4
        0x7f0b05b1
        0x7f0b05bd
        0x7f0b05c8
        0x7f0b05d3
    .end array-data

    :array_6
    .array-data 4
        0x7f0b05b2
        0x7f0b05bc
        0x7f0b05c7
        0x7f0b05d2
    .end array-data

    :array_7
    .array-data 4
        0x7f0b05b3
        0x7f0b05be
        0x7f0b05c9
        0x7f0b05d4
    .end array-data

    :array_8
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_9
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_a
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_b
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_c
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_d
    .array-data 4
        0x7f0b05b4
        0x7f0b05bf
        0x7f0b05ca
        0x7f0b05d5
    .end array-data

    :array_e
    .array-data 4
        0x7f0b05b5
        0x7f0b05c0
        0x7f0b05cb
        0x7f0b05d6
    .end array-data

    :array_f
    .array-data 4
        0x7f0b05b6
        0x7f0b05c1
        0x7f0b05cc
        0x7f0b05d7
    .end array-data

    :array_10
    .array-data 4
        0x7f0b05b7
        0x7f0b05c3
        0x7f0b05ce
        0x7f0b05d9
    .end array-data

    :array_11
    .array-data 4
        0x7f0b05b8
        0x7f0b05c2
        0x7f0b05cd
        0x7f0b05d8
    .end array-data

    :array_12
    .array-data 4
        0x7f0b05b9
        0x7f0b05c4
        0x7f0b05cf
        0x7f0b05da
    .end array-data

    :array_13
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_14
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_15
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_16
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_17
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_18
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subtype"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 232
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 78
    iput v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 79
    iput v4, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 80
    iput v5, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 81
    iput v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 86
    const/16 v0, 0x19

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeLabels:[[I

    .line 181
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 197
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 291
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 330
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 233
    iput p2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 234
    return-void

    .line 86
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x7f0b019e
        0x7f0b01a1
        0x7f0b01a2
        0x7f0b01a3
    .end array-data

    :array_4
    .array-data 4
        0x7f0b05b0
        0x7f0b05bb
        0x7f0b05c6
        0x7f0b05d1
    .end array-data

    :array_5
    .array-data 4
        0x7f0b05b1
        0x7f0b05bd
        0x7f0b05c8
        0x7f0b05d3
    .end array-data

    :array_6
    .array-data 4
        0x7f0b05b2
        0x7f0b05bc
        0x7f0b05c7
        0x7f0b05d2
    .end array-data

    :array_7
    .array-data 4
        0x7f0b05b3
        0x7f0b05be
        0x7f0b05c9
        0x7f0b05d4
    .end array-data

    :array_8
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_9
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_a
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_b
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_c
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_d
    .array-data 4
        0x7f0b05b4
        0x7f0b05bf
        0x7f0b05ca
        0x7f0b05d5
    .end array-data

    :array_e
    .array-data 4
        0x7f0b05b5
        0x7f0b05c0
        0x7f0b05cb
        0x7f0b05d6
    .end array-data

    :array_f
    .array-data 4
        0x7f0b05b6
        0x7f0b05c1
        0x7f0b05cc
        0x7f0b05d7
    .end array-data

    :array_10
    .array-data 4
        0x7f0b05b7
        0x7f0b05c3
        0x7f0b05ce
        0x7f0b05d9
    .end array-data

    :array_11
    .array-data 4
        0x7f0b05b8
        0x7f0b05c2
        0x7f0b05cd
        0x7f0b05d8
    .end array-data

    :array_12
    .array-data 4
        0x7f0b05b9
        0x7f0b05c4
        0x7f0b05cf
        0x7f0b05da
    .end array-data

    :array_13
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_14
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_15
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_16
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_17
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data

    :array_18
    .array-data 4
        0x7f0b05ba
        0x7f0b05c5
        0x7f0b05d0
        0x7f0b05db
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccDepersonalizationPanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccDepersonalizationPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/IccDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccDepersonalizationPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IccDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccDepersonalizationPanel;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private displayStatus(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 309
    .local v1, "label":I
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeLabels:[[I

    iget v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    aget-object v2, v2, v3

    aget v1, v2, p1

    .line 311
    if-nez v1, :cond_0

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Perso Subtype :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 315
    :cond_0
    if-nez p1, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "displayText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    .end local v0    # "displayText":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 320
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 238
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 239
    const v2, 0x7f040035

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->setContentView(I)V

    .line 242
    const v2, 0x7f07009d

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 243
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 244
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v0, v1

    .line 248
    check-cast v0, Landroid/text/Spannable;

    .line 249
    .local v0, "span":Landroid/text/Spannable;
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 251
    const v2, 0x7f07009b

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 252
    const v2, 0x7f07009c

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    .line 253
    invoke-direct {p0, v5}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    .line 255
    const v2, 0x7f07009e

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 256
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v2, 0x7f07009f

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    const-string v2, "Enabling \'Dismiss\' button..."

    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :goto_0
    const v2, 0x7f0700a0

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 272
    const v2, 0x7f0700a1

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 274
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 275
    return-void

    .line 266
    :cond_0
    const-string v2, "Removing \'Dismiss\' button..."

    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 284
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 280
    return-void
.end method

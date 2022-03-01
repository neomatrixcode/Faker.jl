

    function format(input::Int,digits::Int)::String
       return string(input,pad = digits)
    end

    """
    Generate a random United States Individual Taxpayer Identification Number (ITIN).

        An United States Individual Taxpayer Identification Number
        (ITIN) is a tax processing number issued by the Internal
        Revenue Service. It is a nine-digit number that always begins
        with the number 9 and has a range of 70-88 in the fourth and
        fifth digit. Effective April 12, 2011, the range was extended
        to include 900-70-0000 through 999-88-9999, 900-90-0000
        through 999-92-9999 and 900-94-0000 through 999-99-9999.
        https://www.irs.gov/individuals/international-taxpayers/general-itin-information
    """
    function itin()::String

        area::Int = intrandom_int(min=900, max=999)
        serial::Int = intrandom_int(min=0, max=9999)

        # The group number must be between 70 and 99 inclusively but not 89 or 93
        # [x for x in 70:100 if x ∉ 89:93 ]
        group::Int = random_element((70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,94,95,96,97,98,99,100))

        #itin = f"{area:03d}-{group:02d}-{serial:04d}"
        return string(format(area,3),"-",format(group,2),"-",format(serial,4))
    end



    """
    Generate a random United States Employer Identification Number (EIN).

        An United States An Employer Identification Number (EIN) is
        also known as a Federal Tax Identification Number, and is
        used to identify a business entity. EINs follow a format of a
        two-digit prefix followed by a hyphen and a seven-digit sequence:
        ##-######
        https://www.irs.gov/businesses/small-businesses-self-employed/employer-id-numbers
    """
    function ein()::String
        # Only certain EIN Prefix values are assigned:
        #
        # https://www.irs.gov/businesses/small-businesses-self-employed/how-eins-are-assigned-and-valid-ein-prefixes

        ein_prefix_choices::NTuple{83, String} = ("01","02","03","04","05","06","10","11","12","13","14","15","16","20","21","22","23","24","25","26","27","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","71","72","73","74","75","76","77","80","81","82","83","84","85","86","87","88","90","91","92","93","94","95","98","99")

        ein_prefix::String = random_element(ein_prefix_choices)
        sequence::Int = intrandom_int(min=0, max=9999999)

        #ein = f"{ein_prefix:s}-{sequence:07d}"
        return string(ein_prefix,"-",format(sequence,7))
    end

    """
    Generate a random invalid United States Social Security Identification Number (SSN).

        Invalid SSNs have the following characteristics:
        Cannot begin with the number 9
        Cannot begin with 666 in positions 1 - 3
        Cannot begin with 000 in positions 1 - 3
        Cannot contain 00 in positions 4 - 5
        Cannot contain 0000 in positions 6 - 9

        https://www.ssa.gov/kc/SSAFactSheet--IssuingSSNs.pdf

        Additionally, return an invalid SSN that is NOT a valid ITIN by excluding certain ITIN related "group" values
    """
    function invalid_ssn()::String
        # itin_group_numbers::NTuple{28, Int64} = (70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,90,91,92,94,95,96,97,98,99)
        area::Int = intrandom_int(min=0, max=999)
        serial::Int = 0
        group::Int = 0

        if area < 900 && area ∉ [666, 0]
            random_group_or_serial::Int = intrandom_int(min=1, max=1000)
            if random_group_or_serial <= 500
                group = 0
                serial = intrandom_int(min=0, max=9999)
            else
                group = intrandom_int(min=0, max=99)
                serial = 0
            end
        elseif area ∈ [666, 0]
            group = intrandom_int(min=0, max=99)
            serial = random_int(min=0, max=9999)
        else #   random_element([x for x in 0:100 if x ∉ itin_group_numbers ])
            group = random_element((0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 89, 93, 100))
            serial = intrandom_int(min=0, max=9999)
        end

        #invalid_ssn = f"{area:03d}-{group:02d}-{serial:04d}"
        return return string(format(area,3),"-",format(group,2),"-",format(serial,4))
    end

    function ssn_execute()::String

        # Certain numbers are invalid for United States Social Security
        # Numbers. The area (first 3 digits) cannot be 666 or 900-999.
        # The group number (middle digits) cannot be 00. The serial
        # (last 4 digits) cannot be 0000.


        area::Int = intrandom_int(min=1, max=899)
        if area == 666
            area = area + 1
        end
        group::String = random_int(min=1, max=99)
        serial::String = random_int(min=1, max=9999)

        #ssn = f"{area:03d}-{group:02d}-{serial:04d}"
        return string(area,"-",group,"-",serial)
    end


    select =  Dict("ITIN" => itin, "EIN" => ein, "INVALID_SSN" => invalid_ssn, "SSN" => ssn_execute )


    """
    Generate a random United States Taxpayer Identification Number of the specified type.

        If no type is specified, a US SSN is returned.
    """
    function ssn(taxpayer_identification_number_type::String = "SSN")::String

        #try
            return select[taxpayer_identification_number_type]()
        #catch
            error("ssn(taxpayer_identification_number_type='SSN'), taxpayer_identification_number_type must be one of 'SSN', 'EIN', 'ITIN' or 'INVALID_SSN'.")
        #end
    end
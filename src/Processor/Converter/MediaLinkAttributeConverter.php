<?php

declare(strict_types=1);

namespace App\Processor\Converter;

/**
 * @author    Jaime Madrid <jaime.madrid@akeneo.com>
 * @copyright 2020 Akeneo SAS (http://www.akeneo.com)
 * @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */
class MediaLinkAttributeConverter implements DataConverterInterface
{
    private const IMAGE_ATTRIBUTE_TYPE = 'media_link';


    public function support(array $attribute): bool
    {
        return self::IMAGE_ATTRIBUTE_TYPE === $attribute['type'];
    }

    public function convert(array $attribute, string $data, array $context)
    {
        return $data;
    }
}
